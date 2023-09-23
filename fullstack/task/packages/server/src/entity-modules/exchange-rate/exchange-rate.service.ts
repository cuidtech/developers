import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import axios from 'axios';

interface ExchangeRateApiResponse {
    rates: {
        validFor: string;
        order: number;
        country: string;
        currency: string;
        amount: number;
        currencyCode: string;
        rate: number;
    }[];
}

enum LanguageEnum {
    EN = 'EN',
    CZ = 'CZ',
}

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async (): Promise<ExchangeRate[]> => {
        try {
            const apiUrl = 'https://api.cnb.cz/cnbapi/exrates/daily';
            const date = '2019-05-17';
            const lang = LanguageEnum.EN;

            const response = await axios.get<ExchangeRateApiResponse>(apiUrl, {
                params: {
                    date,
                    lang,
                },
            });

            if (response.status === 200) {
                const rates: ExchangeRate[] = response.data.rates.map((rateData) => {
                    const exchangeRate = new ExchangeRate();
                    exchangeRate.country = rateData.country;
                    exchangeRate.currency = rateData.currency;
                    exchangeRate.amount = rateData.amount;
                    exchangeRate.code = rateData.currencyCode;
                    exchangeRate.rate = rateData.rate;
                    return exchangeRate;
                });

                return rates;
            }
            return [];
        } catch (error) {
            console.error('Error fetching exchange rates:', error);
            throw new Error('Error fetching exchange rates');
        }
    };
}
