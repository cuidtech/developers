import { Args, Query, Resolver } from '@nestjs/graphql';
import { ExchangeRate } from '@cuid/entities';
import { ExchangeRateService } from './exchange-rate.service';
import { HttpException, HttpStatus } from '@nestjs/common';

@Resolver(ExchangeRate)
export class ExchangeRateResolver {
  constructor(private readonly exchangeRateService: ExchangeRateService) { }

  // TODO: Implement a GraphQL Query that returns the exchange rates
  @Query(() => [ExchangeRate], { name: 'rates' })
  async exchangeRates(
    @Args({ name: 'rateDate', type: () => String }) rateDate: string
  ): Promise<ExchangeRate[]> {
    try {
      return await this.exchangeRateService.getExchangeRates(rateDate);
    } catch (error) {
      throw new HttpException('something went wrong', HttpStatus.INTERNAL_SERVER_ERROR);
    }
  }
}
