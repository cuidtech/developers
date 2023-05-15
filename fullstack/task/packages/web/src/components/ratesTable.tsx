import { FC } from 'react';
import { ExchangeRate } from '../App';

const RatesTable: FC<{ exRates: ExchangeRate[] }> = ({ exRates }) => {
  return (
    <table className="table-auto ">
      <thead>
        <tr className="bg-green-600">
          <th className="px-2 py-2">
            <span className="text-gray-100 font-semibold">Country</span>
          </th>
          <th className="px-2 py-2">
            <span className="text-gray-100 font-semibold">Currency</span>
          </th>

          <th className="px-2 py-2">
            <span className="text-gray-100 font-semibold">Amount</span>
          </th>

          <th className="px-2 py-2">
            <span className="text-gray-100 font-semibold">Code</span>
          </th>

          <th className="px-2 py-2">
            <span className="text-gray-100 font-semibold">Rate</span>
          </th>
        </tr>
      </thead>
      <tbody>
        {exRates?.map((row: ExchangeRate) => {
          const { country, code, rate, currency, amount } = row;

          return (
            <tr className="bg-white border-b-2 border-gray-200">
              <td className="text-center py-2">
                <span className="font-semibold">{country}</span>
              </td>
              <td className="text-center py-2">
                <span className="">{currency}</span>
              </td>

              <td className="text-center py-2">
                <span className="font-semibold">{amount}</span>
              </td>
              <td className="text-center py-2">
                <span>{code}</span>
              </td>

              <td className="text-center py-2">
                <span className="font-semibold">{rate}</span>
              </td>
            </tr>
          );
        })}
      </tbody>
    </table>
  );
};
export default RatesTable;
