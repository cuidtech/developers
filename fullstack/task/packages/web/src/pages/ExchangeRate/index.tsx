import { useQuery } from '@apollo/client';
import { Table, Spin } from 'antd';
import { IExchangeRateQueryResponse } from '../../ts/interfaces/exchange-rate.interface';
import GET_EXCHANGE_RATES from '../../graphql/queries/exchangeRates';
import exchangeRateColumns from './table-columns/ExchangeRate';
import './index.css';

function ExchangeRate() {
    const { loading, error, data } = useQuery<IExchangeRateQueryResponse>(GET_EXCHANGE_RATES, {
        fetchPolicy: 'network-only',
    });

    const renderExchangeRates = () => {
        if (loading) return <Spin tip="Loading" size="large" className="spinner" />;
        if (error) return <p>Error</p>;
        return (
            <div className="table__wrapper">
                <Table
                    columns={exchangeRateColumns}
                    dataSource={data?.exchangeRates || []}
                    className="table"
                    size="middle"
                    pagination={{ pageSize: 16, position: ['bottomCenter'] }}
                />
            </div>
        );
    };

    return <>{renderExchangeRates()}</>;
}

export default ExchangeRate;
