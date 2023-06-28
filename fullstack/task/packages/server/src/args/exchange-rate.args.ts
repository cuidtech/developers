import { ArgsType, Field } from "@nestjs/graphql";

@ArgsType()
export class ExchangeRateArgs {

    // If a valid "JS date string" is set in the GraphQL client, this works nicely.
    // TODO: Add proper validation through decorators (using class-validator for example) 
    @Field(() => Date, { 
        nullable: true,
        description: 'This should be a StringDate following this format: YYYY-MM-DD. Please note that months are 2 digits long' 
    })
    date?: Date
}