import { ExchangeRateResult } from 'src/entities/exchange-rate-result.model';
import { Query, Args, Int, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver()
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    @Query(() => ExchangeRateResult)
    async exchangeRates(
        @Args('page', { type: () => Int, defaultValue: 1 }) page: number,
        @Args('limit', { type: () => Int, defaultValue: 10 }) limit: number
    ): Promise<ExchangeRateResult> {
        const { exchangeRates, totalCount } = await this.exchangeRateService.getExchangeRates(
            page,
            limit
        );

        return { exchangeRates, totalCount };
    }
}
