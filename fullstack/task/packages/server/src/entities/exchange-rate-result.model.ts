import { Field, Int, ObjectType } from '@nestjs/graphql';
import { ExchangeRate } from './exchange-rate.model';

@ObjectType()
export class ExchangeRateResult {
    @Field(() => [ExchangeRate])
    exchangeRates: ExchangeRate[];

    @Field(() => Int)
    totalCount: number;
}
