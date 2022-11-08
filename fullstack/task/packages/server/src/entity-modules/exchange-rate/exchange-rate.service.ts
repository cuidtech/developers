import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async () => {
        const rates: ExchangeRate[] = [];

        // TODO: Implement the fetching and parsing of the exchange rates.
        // Use this method in the resolver.

        return rates;
    };
}
