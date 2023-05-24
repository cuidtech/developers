import {
    GridRowsProp,
    GridPageChangeParams,
    GridPageSizeChangeParams,
    GridColDef,
} from '@mui/x-data-grid';

export type DataGridProps = {
    rows: GridRowsProp;
    columns: GridColDef[];
    pageSizeOptions: number[];
    onPageChange: (params: GridPageChangeParams) => void;
    onPageSizeChange: (params: GridPageSizeChangeParams) => void;
};
