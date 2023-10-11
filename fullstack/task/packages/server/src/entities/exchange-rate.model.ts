import { Field, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class ExchangeRate {
    @Field(() => String)
    public country!: string;

    @Field(() => String)
    public currncy!: string;

    @Field(() => Number)
    public amount!: number;

    @Field(() => String)
    public code!: string;

    @Field(() => Number)
    public rate!: number;
}
