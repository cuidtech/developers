import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { ConfigService } from '@nestjs/config';
import { HttpService } from '@nestjs/axios';

@Injectable()
export class ExchangeRateService {
    constructor(private configService: ConfigService, private readonly httpService: HttpService) {}

    public getExchangeRates = async () => {
        const cnbEndpoint = this.configService.get('CNB_URL');
        console.log('!!! service', cnbEndpoint);
        const rates: ExchangeRate[] = [
            { country: 'test-country', currency: 'czk', amount: 4444, code: 'CODE', rate: 111.2 },
        ];

        // TODO: Implement the fetching and parsing of the exchange rates.
        // Use this method in the resolver.

        return Promise.resolve(rates);
    };
}
