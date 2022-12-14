import { Field, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class ExchangeRate {
    @Field(() => String)
    public code!: string;

    @Field(() => String)
    public description!: string;

    @Field(() => [Number])
    public rates!: number[];
}
