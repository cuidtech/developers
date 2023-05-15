import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import fetch from 'node-fetch';
import * as dayjs from 'dayjs';

@Injectable()
export class ExchangeRateService {
  private baseUrl =
    'https://www.cnb.cz/en/financial-markets/foreign-exchange-market/central-bank-exchange-rate-fixing/central-bank-exchange-rate-fixing/daily.txt?date=';
  public getExchangeRates = async (rateDate: string) => {
    try {
      const formatedRateDate = dayjs(rateDate).format('DD.MM.YYYY');
      const queryUrl = this.baseUrl + formatedRateDate;
      const data = await fetch(queryUrl);
      const textRaw = await data.text();
      const ratesData = textRaw.split('\n').splice(2);
      const rates = ratesData
        .map((rateRow) => {
          if (!rateRow.length) return;
          const [country, currency, amount, code, rate] = rateRow.split('|');
          return {
            country,
            currency,
            amount: +amount,
            code,
            rate: +rate,
          } as ExchangeRate;
        })
        .filter(Boolean);

      return rates;
    } catch (error) {
      throw new Error(error);
    }
  };
}
