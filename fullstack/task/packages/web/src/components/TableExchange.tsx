import React, {useEffect, useMemo, useState} from "react";
import {useApolloClient} from "@apollo/client";
import {ExchangeRate} from "../interfaces/IExchangeRate";
import MaterialReactTable, {MRT_ColumnDef} from "material-react-table";
import {getCurrencyData} from "../services/getCurrencyData";


const TableExchange = () => {
    // TODO: Add the FE for exchange rates here.
    const client = useApolloClient();


    const [loading, setLoading] = useState<boolean>(false);
    const [dataResponse, setDataResponse] = useState<ExchangeRate[]>([]);

    useEffect(() => {
        getCurrencyData({client}).then((data) => {
            const dataFinal = data.exchangeRates.map((item: ExchangeRate) => {
                return {
                    country: item.country,
                    currency: item.currency,
                    amount: item.amount,
                    code: item.code,
                    rate: item.rate,
                }
            })

            setDataResponse(dataFinal)
            setLoading(true)
        }).catch((error) => {
            console.error(error);
        })
    }, [client])


    const columnsDataTable = useMemo<MRT_ColumnDef<ExchangeRate>[]>(
        () => [
            {
                accessorKey: 'country',
                header: 'Country',
                size: 100,

            },
            {
                accessorKey: 'currency',
                header: 'Currency',
                size: 100,

            },
            {
                accessorKey: 'amount',
                header: 'Amount',
                size: 100,
            },
            {
                accessorKey: 'code',
                header: 'Code',
                size: 80,
            },
            {
                accessorKey: 'rate',
                header: 'Rate',
                size: 100,

            },
        ],
        [],
    );


    return (
        <>
            {loading && (
                <MaterialReactTable  columns={columnsDataTable} data={dataResponse} columnResizeMode='onEnd' enableColumnResizing={true} />
            )}

        </>
    );
};


export default TableExchange;
