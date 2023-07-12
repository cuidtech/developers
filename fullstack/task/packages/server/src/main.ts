import { ConfigService } from '@nestjs/config';
import { NestApplication, NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
    const app = await NestFactory.create<NestApplication>(AppModule);

    const configService = app.get(ConfigService);
    const port = configService.get('PORT');

    const host = '0.0.0.0';
    await app.listen(port, host);
    console.log(`App is listenning in ${host}:${port}`);
}
bootstrap();
