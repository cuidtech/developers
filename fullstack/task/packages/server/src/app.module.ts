import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { GraphQLModule } from '@nestjs/graphql';
import { modules } from '@cuid/entity-modules';
import { graphqlConfig } from './config';
import {ExchangeRateResolver} from "./entity-modules/exchange-rate/exchange-rate.resolver";

@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
        }),
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        GraphQLModule.forRoot<any>(graphqlConfig),
        ...modules,
    ],
    controllers: [],
    providers: [ExchangeRateResolver],

})
export class AppModule {}
