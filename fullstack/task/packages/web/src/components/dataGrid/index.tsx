import { DataGrid } from '@mui/x-data-grid';
import { DataGridProps } from './index.types';

function CustomDataGrid({
    rows,
    columns,
    pageSizeOptions,
    onPageChange,
    onPageSizeChange,
}: DataGridProps) {
    return (
        <div className="table-grid">
            <DataGrid
                rows={rows}
                columns={columns}
                initialState={{
                    pagination: {
                        paginationModel: { page: 0, pageSize: 5 },
                    },
                }}
                pageSizeOptions={pageSizeOptions}
                pagination
                onPageChange={onPageChange}
                onPageSizeChange={onPageSizeChange}
            />
        </div>
    );
}

export default CustomDataGrid;
