import { Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '../../entities';
import { ExchangeRateService } from './exchange-rate.service';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    @Query(() => [ExchangeRate])
    async exchangeRates(): Promise<ExchangeRate[]> {
        return this.exchangeRateService.getExchangeRates();
    }
}
