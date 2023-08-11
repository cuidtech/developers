import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async () => {
        console.log('!!! service');
        const rates: ExchangeRate[] = [
            { country: 'test-country', currency: 'czk', amount: 4444, code: 'CODE', rate: 111.2 },
        ];

        // TODO: Implement the fetching and parsing of the exchange rates.
        // Use this method in the resolver.

        return rates;
    };
}
