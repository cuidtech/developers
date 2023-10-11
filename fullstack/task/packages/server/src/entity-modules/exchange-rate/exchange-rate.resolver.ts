import { Query, Resolver } from '@nestjs/graphql';
import { ExchangeRates } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver(ExchangeRates)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    @Query(() => ExchangeRates)
    async exchangeRates(): Promise<ExchangeRates> {
        const rates = await this.exchangeRateService.getExchangeRates();
        return rates;
    }
}
