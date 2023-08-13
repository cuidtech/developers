import {
    TableContainer,
    Table,
    TableHead,
    TableRow,
    TableCell,
    TableBody,
    TableCellProps,
} from '@mui/material';
import { ExchangeRatesQuery } from '../../generated';
import { ExchangeRateKey } from './types';

const columns: { key: ExchangeRateKey; label: string; align?: TableCellProps['align'] }[] = [
    { key: 'country', label: 'Country' },
    { key: 'currency', label: 'Currency' },
    { key: 'amount', label: 'Amount' },
    { key: 'code', label: 'Code' },
    { key: 'rate', label: 'Rate' },
];

export function ExchangeRatesTable({ exchangeRates }: Pick<ExchangeRatesQuery, 'exchangeRates'>) {
    return (
        <TableContainer sx={{ maxHeight: 'calc(100vh - 80px)' }}>
            <Table stickyHeader aria-label="sticky table">
                <TableHead>
                    <TableRow>
                        {columns.map((column) => (
                            <TableCell key={column.key} align={column.align}>
                                {column.label}
                            </TableCell>
                        ))}
                    </TableRow>
                </TableHead>
                <TableBody>
                    {exchangeRates.map((row) => (
                        <TableRow key={row.code}>
                            {columns.map(({ key }) => {
                                const rowValue = row[key];
                                return (
                                    <TableCell key={`${key}__${rowValue}`}>{rowValue}</TableCell>
                                );
                            })}
                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </TableContainer>
    );
}
