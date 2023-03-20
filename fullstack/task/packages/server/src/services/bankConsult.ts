import axios from 'axios';
import { ExchangeRate } from '@cuid/entities';

const url =
    'https://www.cnb.cz/en/financial-markets/foreign-exchange-market/central-bank-exchange-rate-fixing/central-bank-exchange-rate-fixing/daily.txt';

const generateExchangeRate = (
    country: string,
    currency: string,
    amount: number,
    code: string,
    rate: number
): ExchangeRate => ({
    country,
    currency,
    amount,
    code,
    rate,
});

const parseResponse = (rates: ExchangeRate[], data: string) => {
    const splitedData = data.split(/\r?\n/);
    const sizeData = splitedData.length - 1;

    // eslint-disable-next-line no-plusplus
    for (let index = 2; index < sizeData; index++) {
        const elementFromData = splitedData[index];
        const parsedElement = elementFromData.split('|');

        const country = parsedElement[0];
        const currency = parsedElement[1];
        const amout = Number(parsedElement[2]);
        const code = parsedElement[3];
        const rate = Number(parsedElement[4]);

        const exchangeRate = generateExchangeRate(country, currency, amout, code, rate);

        rates.push(exchangeRate);
    }
};

export const consultBankRates = async (rates: ExchangeRate[]) => {
    const response = await axios.get(url);
    const { data } = response;

    parseResponse(rates, data);

    return rates;
};
