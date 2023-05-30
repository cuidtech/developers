export interface KurzyClass {
    banka: string;
    datum: string;
    poradi: string;
}

export interface Tabulka {
    typ: string;
}

export interface Radek {
    kod: string;
    mena: string;
    mnozstvi: string;
    kurz: string;
    zeme: string;
}

export interface RadekElement {
    $: Radek;
}

export interface TabulkaElement {
    $: Tabulka;
    radek: RadekElement[];
}

export interface Kurzy {
    $: KurzyClass;
    tabulka: TabulkaElement[];
}

export interface ExchangeRateCNBResponse {
    kurzy: Kurzy;
}
