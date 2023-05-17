import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import axios from 'axios';

@Injectable()
export class ExchangeRateService {

  private baseUrl = 'https://www.cnb.cz/en/financial-markets/foreign-exchange-market/central-bank-exchange-rate-fixing/central-bank-exchange-rate-fixing/daily.txt?date=';

  public getExchangeRates = async (date: string): Promise<ExchangeRate[]>  => {
    const rates: ExchangeRate[] = [];
    console.log(date)
    try {
      const response = await axios.get(`${this.baseUrl}${date}`);
      const textData = response.data;
      const lines = textData.split('\n');
  
      for (const line of lines.slice(2, -1)) {
        const values = line.split('|');
        const [country, currency, amount, code, rate] = values;
        const entry: ExchangeRate = { country, currency, amount, code, rate };
        rates.push(entry);
      }
      
      console.log("Successfully retrieve exchange rates")
      return rates;
    } catch (error) {
      console.error('Error fetching exchange rates:', error);
      throw new Error("Failed to retrive exchange rates");
    }
  };
}
