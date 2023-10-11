import { Field, ObjectType } from '@nestjs/graphql';
import { ExchangeRate } from './exchange-rate.model';

@ObjectType()
export class ExchangeRates {
    @Field(() => String)
    public date!: string;

    @Field(() => [ExchangeRate])
    public rates!: ExchangeRate[];

}
