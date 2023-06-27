import { Field, Float, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class ExchangeRate {
    @Field(() => String)
    public country!: string;

    @Field(() => String)
    public currency!: string;

    @Field(() => Number)
    public amount!: number;

    @Field(() => String)
    public code!: string;

    @Field(() => Float)
    public rate!: number;

    constructor() {
        this.country = ''
        this.currency = ''
        this.amount = 0
        this.code = ''
        this.rate = 0
    }
}
