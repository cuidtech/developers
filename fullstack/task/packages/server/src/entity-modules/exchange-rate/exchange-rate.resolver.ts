import { Query, Resolver, Args, Int } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver(() => ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    @Query(() => [ExchangeRate])
    async exchangeRates(
        @Args('date', { type: () => String, nullable: true }) date: string,
        @Args('limit', { type: () => Int, nullable: true }) limit: number,
        @Args('offset', { type: () => Int, nullable: true }) offset: number
    ): Promise<ExchangeRate[]> {
        return await this.exchangeRateService.getExchangeRates(date, limit, offset);
    }
}
