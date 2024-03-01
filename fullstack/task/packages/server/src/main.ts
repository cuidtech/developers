import { ConfigService } from '@nestjs/config';
import { NestApplication, NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
    const app = await NestFactory.create<NestApplication>(AppModule);

    const configService = app.get(ConfigService);
    const port = configService.get('PORT');

    const host = '0.0.0.0';
    console.log('listening on ', host, ':', port);
    await app.listen(port, host);
}
bootstrap();
