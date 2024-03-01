import { Injectable } from '@nestjs/common';
import axios from 'axios';
import { convertExchangeRates } from './utils';
import { EXCHANGE_RATES_API_LANGUAGE, EXCHANGE_RATES_API_URL } from './constants';

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async (dateStr: string) => {
        return this.fetchDailyExchangeRates(dateStr);
    };

    async fetchDailyExchangeRates(dateStr: string) {
        try {
            const response = await axios.get(EXCHANGE_RATES_API_URL, {
                params: {
                    date: dateStr,
                    lang: EXCHANGE_RATES_API_LANGUAGE,
                },
                headers: {
                    accept: 'application/json',
                },
            });

            return convertExchangeRates(response.data);
        } catch (error) {
            console.error('Error fetching daily exchange rates:', error);
            return null;
        }
    }
}
