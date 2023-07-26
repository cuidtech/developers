import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { GraphQLModule } from '@nestjs/graphql';
import { modules } from '@cuid/entity-modules';
import { graphqlConfig } from './config';
import { ExchangeRateModule } from './entity-modules/exchange-rate/exchange-rate.module';

@Module({
    imports: [
        ExchangeRateModule,
        ConfigModule.forRoot({
            isGlobal: true,
        }),
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        GraphQLModule.forRoot<any>(graphqlConfig),
        ...modules,
    ],
    controllers: [],
    providers: [],
})
export class AppModule { }
