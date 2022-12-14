import { Args, Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    @Query(() => [ExchangeRate])
    async exchangeRates(
        @Args('historyLength', { type: () => Number, nullable: true }) historyLength: number | null
    ): Promise<ExchangeRate[]> {
        return this.exchangeRateService.getExchangeRates(historyLength);
    }

    @Query(() => ExchangeRate)
    async exchangeRate(
        @Args('code', { type: () => String }) code: string,
        @Args('historyLength', { type: () => Number, nullable: true }) historyLength: number | null
    ): Promise<ExchangeRate> {
        return this.exchangeRateService.getExchangeRate(code, historyLength);
    }
}
