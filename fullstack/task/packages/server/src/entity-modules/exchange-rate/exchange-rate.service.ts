import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import axios from 'axios';


@Injectable()
export class ExchangeRateService {
    private baseUri: string = 'https://api.cnb.cz/cnbapi/exrates/';
    public getExchangeRatesDaily = async () => {
        //     const rates: ExchangeRate[] = [];
        //
        //     // TODO: Implement the fetching and parsing of the exchange rates.
        //     // Use this method in the resolver.
        const response = await axios.get(this.baseUri+'daily');
        if(response.status === 200) {
            const data = response.data;
            const rates: ExchangeRate[] = [];
            for (const rate of data['rates']) {
                rates.push({
                    country: rate['country'],
                    currency: rate['currency'],
                    amount: rate['amount'],
                    code: rate['currencyCode'],
                    date: rate['validFor'],
                    rate:  rate['rate'],
                });
            }
            return rates;
        }

    };
}
