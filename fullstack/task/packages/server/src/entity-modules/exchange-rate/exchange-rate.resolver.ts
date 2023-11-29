import { Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    @Query(() => [ExchangeRate])
    async exchangeRates(): Promise<ExchangeRate[]> {
        const rates: ExchangeRate[] = await this.exchangeRateService.getExchangeRates();
        return rates;
    }
}
