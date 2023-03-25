import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import axios from 'axios';
import { config } from 'dotenv';

config();
@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async () => {
        let rates: ExchangeRate[] = [];
        const response = await axios.get(process.env.CNB_API_URL);

        // Split the response into lines and remove any comments, last line ignored because it is empty
        const linesCount = response.data.split('\n').length - 1;
        const lines : String[] = response.data.split('\n').filter((line, index) => index >= 2 && index < linesCount && !line.startsWith('#'));

        // Parse the exchange rates from the lines
        rates = lines.map(line => {
            const [country, currency, amount, code, rate] = line.split('|');
            return {
                country,
                currency,
                amount : parseInt(amount),
                code,
                rate: parseFloat(rate)
            };
        });
        return rates;
    };
}
