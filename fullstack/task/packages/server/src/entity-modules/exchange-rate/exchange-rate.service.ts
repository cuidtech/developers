import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import fetch from 'node-fetch';
import * as dayjs from 'dayjs';
@Injectable()
export class ExchangeRateService {
  private bankUrl =
    'https://www.cnb.cz/en/financial-markets/foreign-exchange-market/central-bank-exchange-rate-fixing/central-bank-exchange-rate-fixing/daily.txt?date=';
  public getExchangeRates = async (rateDate: string) => {
    const newDate = dayjs(rateDate).format('DD.MM.YYYY');
    // console.log(newDate)
    const data = await fetch(this.bankUrl + newDate);
    const text = await data.text();
    const splited = text.split('\n');
    const ratesData = splited.splice(2);
    const processData = ratesData
      .map((rate) => {
        if (!rate.length) return;
        return rate.split('|');
      })
      .filter(Boolean);
    const rates: ExchangeRate[] = processData.map((rate) => {
      const rateObj = new ExchangeRate();
      rateObj.country = rate[0];
      rateObj.currency = rate[1];
      rateObj.amount = +rate[2];
      rateObj.code = rate[3];
      rateObj.rate = +rate[4];
      return rateObj;
    });
    // console.log({ratesData,processData})

    // TODO: Implement the fetching and parsing of the exchange rates.
    // Use this method in the resolver.

    return rates;
  };
}
