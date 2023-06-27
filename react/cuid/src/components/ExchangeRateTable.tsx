import { ExchangeRate } from "../interfaces/ExchangeRate";

export default function ExchangeRateTable({exchangeRates}: {exchangeRates: ExchangeRate[]}) {

    return (
        <table className="w-full table-auto border-spacing-2">
            <thead>
                <tr className="border-b-2">
                <th className="p-2 align-top">Country</th>
                <th className="p-2">Currency</th>
                <th className="p-2">Amount</th>
                <th className="p-2">Code</th>
                <th className="p-2">Rate</th>
                </tr>
            </thead>
            <tbody>
                {exchangeRates.map((er, idx) => {
                    return (
                        <tr className='border-b' key={idx}>
                            <td className="p-2">{er.country}</td>
                            <td className="p-2">{er.currency}</td>
                            <td className="p-2">{er.amount}</td>
                            <td className="p-2">{er.code}</td>
                            <td className="p-2">{er.rate}</td>
                        </tr>
                    )
                })}
            </tbody>
        </table>
    )

}
