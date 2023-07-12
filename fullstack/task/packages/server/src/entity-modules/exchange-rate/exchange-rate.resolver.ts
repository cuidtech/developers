import { Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver((of) => ExchangeRate)
export class ExchangeRateResolver {
    constructor(private exchangeRateService: ExchangeRateService) {}

    @Query((returns) => [ExchangeRate])
    async exchangeRates(): Promise<ExchangeRate[]> {
        return this.exchangeRateService.getExchangeRates();
    }
}
