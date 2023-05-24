import { useState, useEffect } from 'react';
import { useQuery } from '@apollo/client';
import { GridPageChangeParams, GridPageSizeChangeParams, GridRowsProp } from '@mui/x-data-grid';
import { QueryVars, ExchangeRatesData } from './types';
import { GET_EXCHANGE_RATES } from './queries';
import { columns } from './constants';
import CustomDataGrid from './components/dataGrid';
import CustomDatePicker from './components/datePicker';
import CustoCustomLoader from './components/loader';

function App() {
    const [page, setPage] = useState(0);
    const [pageSize, setPageSize] = useState(10);
    const [selectedDate, setSelectedDate] = useState<Date | null>(new Date());

    const { loading, error, data, refetch } = useQuery<ExchangeRatesData, QueryVars>(
        GET_EXCHANGE_RATES,
        {
            variables: {
                date: selectedDate.toISOString().slice(0, 10) || '',
                limit: pageSize,
                offset: page * pageSize,
            },
            fetchPolicy: 'network-only',
        }
    );

    useEffect(() => {
        refetch({ date: '2023-05-23', limit: pageSize, offset: page * pageSize });
    }, [page, pageSize, refetch]);

    if (loading) return <CustoCustomLoader />;
    if (error) return <p>Error :(</p>;

    const rows: GridRowsProp =
        data?.exchangeRates.map((rate, index) => ({
            id: index,
            ...rate,
        })) || [];

    return (
        <>
            <h1>Select a date in order to display the data accordingly</h1>
            <CustomDatePicker selectedDate={selectedDate} onDateChange={setSelectedDate} />
            <div className="grid-container">
                <CustomDataGrid
                    rows={rows}
                    columns={columns}
                    pageSizeOptions={[5, 10]}
                    onPageChange={(params: GridPageChangeParams) => setPage(params.page)}
                    onPageSizeChange={(params: GridPageSizeChangeParams) =>
                        setPageSize(params.pageSize)
                    }
                />
            </div>
        </>
    );
}

export default App;
