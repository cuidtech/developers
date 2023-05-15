import { Injectable } from '@nestjs/common';
import fetch from 'node-fetch';
import * as dayjs from 'dayjs';
import { ExchangeRate } from '../../entities';

@Injectable()
export class ExchangeRateService {
    private baseUrl =
        'https://www.cnb.cz/en/financial-markets/foreign-exchange-market/central-bank-exchange-rate-fixing/central-bank-exchange-rate-fixing/daily.txt?date=';
    // eslint-disable-next-line lines-between-class-members
    public getExchangeRates = async (rateDate: string) => {
        try {
            const formatedRateDate = dayjs(rateDate).format('DD.MM.YYYY');
            const queryUrl = this.baseUrl + formatedRateDate;
            const data = await fetch(queryUrl);
            const textRaw = await data.text();
            const ratesData = textRaw.split('\n').splice(2);
            const rates = ratesData
                .map((rateRow) => {
                    if (rateRow.length) {
                        const [country, currency, amount, code, rate] = rateRow.split('|');
                        return {
                            country,
                            currency,
                            amount: +amount,
                            code,
                            rate: +rate,
                        } as ExchangeRate;
                    }
                    return undefined;
                })
                .filter(Boolean);

            return rates;
        } catch (error) {
            throw new Error(error);
        }
    };
}
