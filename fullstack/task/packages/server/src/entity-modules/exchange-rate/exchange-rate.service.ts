import { Injectable } from '@nestjs/common';
import { ExchangeRates, ExchangeRate } from '@cuid/entities';
import axios from 'axios';
import Constants from '../../config/constants';

async function fetchRatesData(url: string) {
    let ratesData: string;
    try {
        ratesData = (await axios.get(url)).data;
    } catch (error) {
        console.error(new Error(`Couldn't reach ${URL} to fetch rates data.`));
    }

    return ratesData;
}

function parseRatesData(ratesData: string): ExchangeRates {
    const exchangeRateRegex =
        /(?<country>.+)[|](?<currncy>.+)[|](?<amount>.+)[|](?<code>.+)[|](?<rate>.+)/gm;
    const dateRegex = /\d{2}.\d{2}.\d{4}/gm;
    const rates: ExchangeRate[] = [];

    [...ratesData.matchAll(exchangeRateRegex)].forEach((match) => {
        const parsedRate = { ...match.groups };
        const rate: ExchangeRate = {
            country: parsedRate.country,
            code: parsedRate.code,
            currncy: parsedRate.currncy,
            amount: parseInt(parsedRate.amount, 10),
            rate: parseFloat(parsedRate.rate),
        };
        rates.push(rate);
    });

    // We have to remove the first result as it doesn't contain rates data, but information about order of rate attributes
    rates.shift();
    return { date: ratesData.match(dateRegex)[0], rates };
}

@Injectable()
export class ExchangeRateService {
    // eslint-disable-next-line class-methods-use-this
    async getExchangeRates() {
        const ratesData: string = await fetchRatesData(Constants.RATES_URL);
        const rates: ExchangeRates = parseRatesData(ratesData);

        return rates;
    }
}
