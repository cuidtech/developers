import { Resolver, Float, Query } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    // TODO: Implement a GraphQL Query that returns the exchange rates
    // eslint-disable-next-line class-methods-use-this
    @Query(() => String, { name: 'hello' })
    helloWorld(): string {
        return 'Hello world!';
    }

    // eslint-disable-next-line class-methods-use-this
    @Query(() => Float, { name: 'getRandomNumber' })
    getMyRandom(): number {
        return Math.random() * 100;
    }

    @Query(() => [ExchangeRate], { name: 'exchange_rates' })
    async exchangeRates() {
        return this.exchangeRateService.getExchangeRates();
    }
}
