// CNB response
export interface CNBRate {
    validFor: string;
    order: number;
    country: string;
    currency: string;
    amount: number;
    currencyCode: string;
    rate: number;
}

export type CNBRates = { rates: CNBRate[] };
