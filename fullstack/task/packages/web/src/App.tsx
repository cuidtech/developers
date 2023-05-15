import { useQuery, gql } from '@apollo/client';
import { useEffect, useState } from 'react';
import DatePicker from './datePicker';

const GET_EXRATES = gql`
  query getRates($rateDate: String!) {
    rates(rateDate:$rateDate) {
  country
    code
    amount
    rate
    currency
    }
  }
`;

type ExchangeRate = {
  country: string,
  code: string,
  amount: number,
  currency: string,
  rate: number
}
function App() {
  // TODO: Add the FE for exchange rates here.
  const [rateDate, setRateDate] = useState<Date>(new Date());
  const { loading, error, data } = useQuery<{ rates: ExchangeRate[] }>(GET_EXRATES, { variables: {rateDate }});

  if (loading) return <p>Loading...</p>;
  // if (error) return <p>Error :(</p>;
  return (
    <div className="p-4">
      <div className="bg-white p-4 rounded-md">
        <div>
          <h2 className="mb-4 text-xl font-bold text-gray-700">Exchange Rates</h2>
          <div className='w-full border-gray-200 flex flex-end flex-row'><DatePicker date={rateDate} setDate={setRateDate} /></div>
          <div>
            <table className="max-w-5xl mx-auto table-auto">
              <thead className="justify-between">
                <tr className="bg-green-600">
                  <th className="px-16 py-2">
                    <span className="text-gray-100 font-semibold">Country</span>
                  </th>
                  <th className="px-16 py-2">
                    <span className="text-gray-100 font-semibold">Currency</span>
                  </th>

                  <th className="px-16 py-2">
                    <span className="text-gray-100 font-semibold">Amount</span>
                  </th>

                  <th className="px-16 py-2">
                    <span className="text-gray-100 font-semibold">Code</span>
                  </th>

                  <th className="px-16 py-2">
                    <span className="text-gray-100 font-semibold">Rate</span>
                  </th>
                </tr>
              </thead>
              {error ? <div>So sorry something has gone wrong, please try again later.</div> : (<tbody className="bg-gray-200">
                {data?.rates.map((rate: ExchangeRate) => {
                  const { country, code, rate: rateFromServer, currency, amount } = rate


                  return (<tr className="bg-white border-b-2 border-gray-200">
                    <td className="px-16 py-2 flex flex-row items-center">
                      <span className="text-center ml-2 font-semibold">{country}</span>
                    </td>
                    <td>
                      <span className="text-center ml-2 font-semibold">{currency}</span>
                    </td>

                    <td className="px-16 py-2">
                      <span>{amount}</span>
                    </td>
                    <td className="px-16 py-2">
                      <span>{code}</span>
                    </td>

                    <td className="px-16 py-2">
                      <span>{rateFromServer}</span>
                    </td>
                  </tr>)

                })}
              </tbody>
              )}
            </table>
          </div>
        </div>
      </div>
    </div>
  );
}
// <!-- component -->
// <!-- responsive table-->
// <div className="mt-2">
//     </div>

export default App;
