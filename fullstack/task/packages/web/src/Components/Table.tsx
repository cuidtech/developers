import {
    createColumnHelper,
    flexRender,
    getCoreRowModel,
    useReactTable,
} from '@tanstack/react-table';

/** @jsxRuntime classic */
/** @jsx jsx */
import { css, jsx } from '@emotion/react';
import { ExchangeRate } from '../types/ExchangeRate';

// Styles
const styles = {
    cell: css`
        padding: 5px;
        border: 1px solid;
    `,
    row: css`
        &:nth-of-type(even) {
            background-color: #f2ead3;
        }
        &:nth-of-type(odd) {
            background-color: #f5f5f5;
        }
        &:hover {
            outline: 2px solid;
            outline-offset: -2px;
        }
    `,
    table: css`
        border-collapse: collapse;
        border: 1px solid;
        margin-bottom: 30px;
    `,
    headerRow: css`
        border-collapse: collapse;
        border: 1px solid;
        background-color: #dfd7bf;
    `,
};

const columnHelper = createColumnHelper<ExchangeRate>();

const columns = [
    columnHelper.accessor('country', {
        cell: (info) => info.getValue(),
        header: () => <span>Země</span>,
    }),
    columnHelper.accessor('currncy', {
        cell: (info) => info.getValue(),
        header: () => <span>Měna</span>,
    }),
    columnHelper.accessor('amount', {
        cell: (info) => info.getValue(),
        header: () => <span>Množství</span>,
    }),
    columnHelper.accessor('code', {
        cell: (info) => info.getValue(),
        header: () => <span>Kód</span>,
    }),
    columnHelper.accessor('rate', {
        cell: (info) => info.getValue(),
        header: () => <span>Kurz</span>,
    }),
];

function Table(props: { data: ExchangeRate[] | undefined }) {
    const { data } = props;

    if (data === undefined) return null;

    // Hooks
    const table = useReactTable({
        data,
        columns,
        getCoreRowModel: getCoreRowModel(),
    });

    return (
        <table css={styles.table}>
            <thead>
                {table.getHeaderGroups().map((headerGroup) => (
                    <tr css={styles.headerRow} key={headerGroup.id}>
                        {headerGroup.headers.map((header) => (
                            <th css={styles.cell} key={header.id}>
                                {header.isPlaceholder
                                    ? null
                                    : flexRender(
                                          header.column.columnDef.header,
                                          header.getContext()
                                      )}
                            </th>
                        ))}
                    </tr>
                ))}
            </thead>
            <tbody>
                {table.getRowModel().rows.map((row) => (
                    <tr css={styles.row} key={row.id}>
                        {row.getVisibleCells().map((cell) => (
                            <td css={styles.cell} key={cell.id}>
                                {flexRender(cell.column.columnDef.cell, cell.getContext())}
                            </td>
                        ))}
                    </tr>
                ))}
            </tbody>
        </table>
    );
}

export default Table;
