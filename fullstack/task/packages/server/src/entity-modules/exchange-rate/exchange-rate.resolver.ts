import { Args, Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver('ExchangeRate')
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    @Query(() => [ExchangeRate])
    async exchangeRates(@Args('dateStr') dateStr: string): Promise<ExchangeRate[]> {
        return this.exchangeRateService.getExchangeRates(dateStr);
    }
}
