import type { ColumnsType } from 'antd/es/table';
import { IExchangeRate } from '../../../ts/interfaces/exchange-rate.interface';

const columns: ColumnsType<IExchangeRate> = [
    {
        title: 'Country',
        dataIndex: 'country',
        key: 'country',
        sorter: (a: IExchangeRate, b: IExchangeRate) => a.country.localeCompare(b.country),
        width: '60%',
    },
    {
        title: 'Currency',
        dataIndex: 'currency',
        key: 'currency',
        render: (text: string) => text.charAt(0).toUpperCase() + text.slice(1),
        sorter: (a: IExchangeRate, b: IExchangeRate) => a.currency.localeCompare(b.currency),
        width: '10%',
    },
    {
        title: 'Amount',
        dataIndex: 'amount',
        key: 'amount',
        align: 'right',
        sorter: (a: IExchangeRate, b: IExchangeRate) => a.amount - b.amount,
        width: '10%',
    },
    {
        title: 'Code',
        dataIndex: 'code',
        key: 'code',
        align: 'center',
        sorter: (a: IExchangeRate, b: IExchangeRate) => a.code.localeCompare(b.code),
        width: '10%',
    },
    {
        title: 'Rate',
        dataIndex: 'rate',
        key: 'rate',
        align: 'right',
        sorter: (a: IExchangeRate, b: IExchangeRate) => a.rate - b.rate,
        width: '10%',
    },
];

export default columns;
