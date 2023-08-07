import { Field, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class ExchangeRate {
    @Field(() => String, { nullable: true })
    public validFor?: string;

    @Field(() => Number, { nullable: true })
    public order?: number;

    @Field(() => String)
    public country!: string;

    @Field(() => String)
    public currency!: string;

    @Field(() => Number)
    public amount!: number;

    @Field(() => String)
    public currencyCode!: string;

    @Field(() => Number)
    public rate!: number;
}
