import { config } from 'dotenv';

config();

export const cnbConfig = {
    url: process.env.CNB_RATES_URL || 'https://api.cnb.cz/cnbapi/exrates/daily',
};
