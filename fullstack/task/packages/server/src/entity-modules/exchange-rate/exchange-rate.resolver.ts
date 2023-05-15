import { Args, Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';
import { Get } from '@nestjs/common';
import * as dayjs from 'dayjs'

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
    constructor(private readonly exchangeRateService: ExchangeRateService) {}

    // TODO: Implement a GraphQL Query that returns the exchange rates
    @Query(() => [ExchangeRate],{name:'rates', })
    async exchangeRates(@Args({name:'rateDate', type:()=> String}) rateDate:string): Promise<ExchangeRate[]> {
    const rates = await this.exchangeRateService.getExchangeRates(rateDate)
        return rates
    }
}
