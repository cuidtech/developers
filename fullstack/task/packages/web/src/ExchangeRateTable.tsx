interface ExchangeRate {
  country: string;
  currency: string;
  amount: number;
  code: string;
  rate: number;
}

interface ExchangeRateTableProps {
  data: ExchangeRate[];
}

const ExchangeRateTable: React.FC<ExchangeRateTableProps> = ({ data }) => {
  return (
    <table style={{ borderCollapse: 'collapse', width: '800px' }}>
      <thead>
        <tr>
          <th style={tableHeaderStyle}>Country</th>
          <th style={tableHeaderStyle}>Currency</th>
          <th style={tableHeaderStyle}>Amount</th>
          <th style={tableHeaderStyle}>Code</th>
          <th style={tableHeaderStyle}>Rate</th>
        </tr>
      </thead>
      <tbody>
        {data.map((row, index) => (
          <tr key={index} style={index % 2 === 0 ? evenRowStyle : oddRowStyle}>
            <td style={tableCellStyle}>{row.country}</td>
            <td style={tableCellStyle}>{row.currency}</td>
            <td style={tableCellStyle}>{row.amount}</td>
            <td style={tableCellStyle}>{row.code}</td>
            <td style={tableCellStyle}>{row.rate}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
};

const tableHeaderStyle: React.CSSProperties = {
    borderBottom: '2px solid #ccc',
    padding: '8px',
    textAlign: "left",
  };

  const evenRowStyle: React.CSSProperties = {
    backgroundColor: '#f2f2f2',
  };

  const oddRowStyle: React.CSSProperties = {
    backgroundColor: '#ffffff',
  };

  const tableCellStyle: React.CSSProperties = {
    padding: '8px',
  };

export default ExchangeRateTable;
