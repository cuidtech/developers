/* eslint-disable class-methods-use-this */
import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { parseStringPromise } from 'xml2js';
import { ExchangeRateCNBResponse } from './interfaces/exchange-rate.interface';

@Injectable()
export class ExchangeRateService {
    private readonly exchangeRateUrl =
        'https://www.cnb.cz/cs/financni_trhy/devizovy_trh/kurzy_devizoveho_trhu/denni_kurz.xml';

    public getExchangeRates = async (): Promise<ExchangeRate[]> => {
        // TODO: Implement the fetching and parsing of the exchange rates.
        // Use this method in the resolver.
        const rates: ExchangeRate[] = [];
        const response = await fetch(this.exchangeRateUrl);
        const xml = await response.text();
        const xmlObject: ExchangeRateCNBResponse = await parseStringPromise(xml);
        const rawRates = xmlObject.kurzy.tabulka[0].radek;

        rawRates.forEach((item) => {
            rates.push({
                country: item.$.zeme,
                currency: item.$.mena,
                amount: this.parseStringToFloat(item.$.mnozstvi),
                rate: this.parseStringToFloat(item.$.kurz),
                code: item.$.kod,
            });
        });

        return rates;
    };

    private parseStringToFloat(rate: string): number {
        return parseFloat(rate.replace(',', '.'));
    }
}
