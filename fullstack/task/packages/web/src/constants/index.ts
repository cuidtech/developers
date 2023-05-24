import { GridColDef } from '@mui/x-data-grid';

export const columns: GridColDef[] = [
    { field: 'country', headerName: 'Country', width: 150 },
    { field: 'currency', headerName: 'Currency', width: 150 },
    { field: 'amount', headerName: 'Amount', type: 'number', width: 110 },
    { field: 'code', headerName: 'Code', width: 150 },
    { field: 'date', headerName: 'Date', width: 150 },
    { field: 'rate', headerName: 'Rate', type: 'number', width: 110 },
    { field: 'order', headerName: 'Order', type: 'number', width: 110 },
];
