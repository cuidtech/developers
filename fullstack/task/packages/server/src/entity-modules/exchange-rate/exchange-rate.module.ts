import { Module } from '@nestjs/common';
import { HttpModule } from '@nestjs/axios';
import { ExchangeRateService } from './exchange-rate.service';
import { ExchangeRateResolver } from './exchange-rate.resolver';

@Module({
    imports: [HttpModule],
    providers: [ExchangeRateService, ExchangeRateResolver],
    exports: [ExchangeRateService],
})
export class ExchangeRateModule {}
