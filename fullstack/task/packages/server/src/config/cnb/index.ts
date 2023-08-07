import { config } from 'dotenv';

config();

export const cnbConfig = {
    url:
        process.env.CNB_RATES_URL ||
        'https://www.cnb.cz/cs/financni-trhy/devizovy-trh/kurzy-devizoveho-trhu/kurzy-devizoveho-trhu/denni_kurz.txt',
};
