import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { parseStringPromise } from 'xml2js';
import fetch from 'node-fetch';

// This is the official API from CNB (Czech National Bank), the only problem is that is in XML format and in czech language
// There was anothers alternatives but they are not official and they are not updated so I preffered to use this one
// I create a parser to convert the XML to JSON and then I can use it
const apiURL =
    'https://www.cnb.cz/cs/financni_trhy/devizovy_trh/kurzy_devizoveho_trhu/denni_kurz.xml';

// Parser to convert the XML to JSON and then I can use it
async function parseExchangeRatesFromXml(xmlData: string): Promise<ExchangeRate[]> {
    const jsonData = await parseStringPromise(xmlData, {
        explicitArray: false, // Ensure objects are not wrapped in arrays
    });

    const rows = jsonData?.kurzy?.tabulka?.radek;

    if (!Array.isArray(rows)) {
        return [];
    }

    const exchangeRates: ExchangeRate[] = rows.map((row) => {
        const country = row.$.zeme;
        const currency = row.$.mena;
        const code = row.$.kod;
        const rate = row.$.kurz?.replace(',', '.');
        const amount = Number(row.$.mnozstvi);

        return { currency, code, amount, country, rate };
    });

    return exchangeRates;
}
@Injectable()
export class ExchangeRateService {
    async getExchangeRates(
        page: number,
        limit: number
    ): Promise<{ exchangeRates: ExchangeRate[]; totalCount: number }> {
        // TODO: Implement the fetching and parsing of the exchange rates.
        // Use this method in the resolver.
        const response = await fetch(apiURL);
        const xmlData = await response.text();
        const allExchangeRates = await parseExchangeRatesFromXml(xmlData);

        const startIndex = (page - 1) * limit;
        const endIndex = page * limit;
        const exchangeRates = allExchangeRates.slice(startIndex, endIndex);
        const totalCount = allExchangeRates.length;

        return { exchangeRates, totalCount };
    }
}
