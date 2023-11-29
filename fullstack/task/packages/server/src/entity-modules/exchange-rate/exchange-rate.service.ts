import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import fetch from 'node-fetch';

const CNB_URL = 'https://www.cnb.cz/cs/financni_trhy/devizovy_trh/kurzy_devizoveho_trhu/denni_kurz.txt';

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async () => {
        const rates: ExchangeRate[] = [];

        // Fetch the exchange rates from CNB website
        const response: Response = await fetch(CNB_URL);
        const data: string = await response.text();

        // Split the data into lines and remove header
        const rateLines: string[] = data.trim().split('\n').splice(2);

        // Loop through each line and push a new object to the array (wanted to use map, but since rates is a const, I use loop with Array.push instead)
        for (const rateLine of rateLines) {
            const [country, currency, amount, code, rate] = rateLine.split('|');
            const currencyObject: ExchangeRate = {
              country,
              currency,
              amount: parseInt(amount),
              code,
              rate: parseFloat(rate.replace(',', '.')),
            };
            rates.push(currencyObject);
          }

        return rates;
    };
}
