import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { GraphQLModule } from '@nestjs/graphql';
import { modules } from '@cuid/entity-modules';
import { graphqlConfig } from './config';

@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
        }),
        GraphQLModule.forRoot<unknown>(graphqlConfig),
        ...modules,
    ],
    controllers: [],
    providers: [],
})
export class AppModule {}
