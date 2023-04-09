import {Query, Resolver} from '@nestjs/graphql';
import {ExchangeRate} from '@cuid/entities';
import {ExchangeRateService} from './exchange-rate.service';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    // TODO: Implement a GraphQL Query that returns the exchange rates
    @Query(() => [ExchangeRate])
    async exchangeRates(): Promise<{ date: string; country: string; amount: number; code: string; rate: string; currency: string }[]> {
        const response = await this.exchangeRateService.getExchangeRatesDaily();
        return response.map(exchangeRate => ({
            country: exchangeRate.country,
            currency: exchangeRate.currency,
            amount: exchangeRate.amount,
            code: exchangeRate.code,
            date: exchangeRate.date,
            rate: exchangeRate.rate,

        }));
    }
}
