import {Injectable} from '@nestjs/common';
import {ExchangeRate} from '@cuid/entities';

const axios = require('axios');
const xml2js = require('xml2js');


@Injectable()
export class ExchangeRateService {
    constructor() {
    }

    public getExchangeRates = async () => {
        const rates: ExchangeRate[] = [];
        const response = await axios.get("https://www.cnb.cz/cs/financni_trhy/devizovy_trh/kurzy_devizoveho_trhu/denni_kurz.xml");
        const parsedData = await xml2js.parseStringPromise(response.data);
        const exchangeData = parsedData.kurzy.tabulka[0].radek;
        exchangeData.forEach((item: any) => {
            const itemData = item['$'];
            const rate = new ExchangeRate();
            rate.country = itemData.zeme;
            rate.currency = itemData.mena;
            rate.amount = itemData.mnozstvi;
            rate.code = itemData.kod;
            rate.rate = itemData.kurz.replace(',', '.');
            rates.push(rate);
        });


        return rates;
    };
}
