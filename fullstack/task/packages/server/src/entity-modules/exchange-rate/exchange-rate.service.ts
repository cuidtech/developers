import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { consultBankRates } from 'src/services/bankConsult';

@Injectable()
export class ExchangeRateService {
    // eslint-disable-next-line @typescript-eslint/no-empty-function
    constructor() {}

    // eslint-disable-next-line class-methods-use-this
    public getExchangeRates = async () => {
        const rates: ExchangeRate[] = [];
        await consultBankRates(rates);
        return rates;
    };
}
