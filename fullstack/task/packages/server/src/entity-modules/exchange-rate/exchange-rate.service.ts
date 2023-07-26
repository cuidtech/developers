import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import fetch from 'node-fetch';
import { parseStringPromise } from 'xml2js';

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async () => {
        const url = "https://www.cnb.cz/cs/financni_trhy/devizovy_trh/kurzy_devizoveho_trhu/denni_kurz.xml";

        const response = await fetch(url);
        const text = await response.text();

        const result = await parseStringPromise(text);

        const rates: ExchangeRate[] = result["kurzy"]["tabulka"][0]["radek"].map(row => {
            return {
                country: row.$.zeme,
                currency: row.$.mena,
                amount: parseFloat(row.$.kurz.replace(',', '.')) / parseFloat(row.$.mnozstvi),
                code: row.$.kod,
            };
        });

        return rates;
    };
}

