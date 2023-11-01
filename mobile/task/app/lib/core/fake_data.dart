const code = 'EUR';
const description =
    'The euro (symbol: €; code: EUR) is the official currency of 19 out of the 27 member states of the European Union (EU). This group of states is known as the eurozone or, officially, the euro area, and includes about 340 million citizens as of 2019. The euro is divided into 100 cents.';
const partialRates = [79.4230880048916, 78.89971580803896];
const rates = [
  69.7580281975329,
  70.5308137659559,
  69.42241564037677,
  70.67309431573787,
  69.77155697984786,
  67.32864098889982,
  69.26503567320725,
  67.00340980490348,
  64.08829893204096,
  67.77546452172653,
  70.22300329608464,
  68.23166716362728,
  68.89698182053358,
  66.72232731229631,
  67.17721961876397,
  70.35431416510043,
  69.36556637208913,
  65.22318259766377,
  64.75831170223431,
  63.65556260300947,
  65.22914648571282,
  69.84901103962143,
  73.64980939267761,
  74.96224372404359,
  78.4337703395674,
  81.60491823187594,
  79.67192086104387,
  81.30644736738944,
  79.4230880048916,
  78.89971580803896,
];

const getCurrencyDetailResponse = {
  'exchangeRate': {
    'description': description,
    'rates': rates,
  }
};

final getCurrenciesResponse = {
  'exchangeRates': [
    {
      'code': code,
      'rates': partialRates,
    },
    {
      'code': 'GBP',
      'rates': [35.46528968277407, 35.17208944659524]
    },
    {
      'code': 'JPY',
      'rates': [59.6126404677078, 62.027841373559504]
    },
    {
      'code': 'AUD',
      'rates': [56.13574585785419, 53.246550197756015]
    },
    {
      'code': 'CAD',
      'rates': [22.236234010893362, 17.807420555636053]
    },
    {
      'code': 'CHF',
      'rates': [8.603324017477455, 7.249879289231217]
    }
  ]
};
