import { Query, Resolver, Args } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    // TODO: Implement a GraphQL Query that returns the exchange rates
    @Query(() => [ExchangeRate])
    async exchangeRates(@Args({ name: 'date', type: () => String }) date: string): Promise<ExchangeRate[]> {
        console.log("Attempting to retrieve daily exchange rate in progress...")
        return await this.exchangeRateService.getExchangeRates(date);
    }
}
