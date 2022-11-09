import {Query, Resolver} from '@nestjs/graphql';
import {ExchangeRate} from '@cuid/entities';
import {ExchangeRateService} from './exchange-rate.service';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {
    }

    @Query(() => [ExchangeRate])
    async exchangeRates() {
        return this.exchangeRateService.getExchangeRates();
    }

}
