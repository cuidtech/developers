import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import axios from 'axios';

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = async (): Promise<ExchangeRate[]>  => {
        const rates: ExchangeRate[] = [];

        // TODO: Implement the fetching and parsing of the exchange rates.
        // Use this method in the resolver.
        try {
            const response = await axios.get('https://www.cnb.cz/en/financial-markets/foreign-exchange-market/central-bank-exchange-rate-fixing/central-bank-exchange-rate-fixing/daily.txt;jsessionid=6B4EBCB9059EF15D312BA419D28516D2?date=17.05.2023');
            const textData = response.data;
        
            const lines = textData.split('\n');
        
            for (const line of lines.slice(2, -1)) {
                const values = line.split('|');
                const [country, currency, amount, code, rate] = values;
                const entry: ExchangeRate = { country, currency, amount, code, rate };
                rates.push(entry);
            }
                    
            return rates;
          } catch (error) {
            console.error('Error fetching exchange rates:', error);
            throw new Error("Failed to retrive Exchange Rates");
          }
    };
}
