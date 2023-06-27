import { Args, Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';
import { ExchangeRateArgs } from 'src/args/exchange-rate.args';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    // TODO: Implement a GraphQL Query that returns the exchange rates
    @Query(() => [ExchangeRate])
    async exchangeRates(@Args() exchangeRateArgs: ExchangeRateArgs): Promise<ExchangeRate[]> {
        return this.exchangeRateService.getExchangeRates(exchangeRateArgs)
    }
}
